jQuery(document).ready(function ($) {

  $("#table_imagens").on("click", ".del_album", function (e) {
    e.preventDefault();
    if (confirm("Tem certeza que deseja excluir esse colaborador?")) {
      window.location.href = this.href;
    }
  })

  /**
   * Assuntos
   */

  $("#materia").change(function(e){
    get_subjects($(this).val()).then( function(response){
      var assuntos = response.data || []
      $("#assunto").attr("disabled", false)
      var html = '<option value="">Selecione um assunto</option>'
      assuntos.map( function(assunto){
        html += `<option value='${assunto.ID}'>${assunto.assunto}</option>`
      })
      $("#assunto").html(html)
    }).catch(function(err){
      console.log('Error:', err)
    })
  })

  /**
   * Detalhes
   */

  $("#add_details").click(function(e){
    e.preventDefault()
    addDetails()
  })

  function addDetails() {
    var masks = $("#detalhes").text()
    console.log('detalhes', masks)
    if (masks) {
      masks = JSON.parse(masks)
      if (masks.length) {
        // Adiciona mais uma máscara à lista
        console.log("Máscara com dados")
      } else {
        console.log("Máscara vazia")
        masks = []
      }
    } else {
      // Escreve o primeiro
      console.log("Máscara vazia")
      masks = []
    }

    // verifica qual o último id
    var length = masks.length,
    lastId = 0
    masks.map( function(e, i) {
      if(length === i+1){
        lastId = e.id
      }
    })

    masks.push({
      id: lastId+1,
      top: 20,
      left: 20,
      width: 10,
      height: 5,
      slug: ""
    })

    $("#detalhes").text(JSON.stringify(masks))
    showDetails()
  }

  function showDetails() {
    var masks = $("#detalhes").text()
    console.log('detalhes', masks)
    if (masks) {
      masks = JSON.parse(masks)
      $("#detalhes_wrap").text("")
      $("#details_wrap").text("")
      if (masks.length) {
        console.log('esse array tem tamanho então devo lê-lo')
        masks.map(function ({ id, top, left, width, height, slug }) {
          $("#detalhes_wrap").append(`
          <div class="detalhe" data-id="${id}">
            <div>
              <label for="detalhe_${id}_title">Slug</label>
              <input type="text" value="${slug}" class="slug" id="detalhe_${id}_slug" />
            </div>
            <div class="controllers">
              <div class="range_wrap vertical">
                <label for="detalhe_${id}_top">Posição Y</label>
                <input type="range" class="top" step="5" id="detalhe_${id}_top" value="${top}" list="tickmarks">
                <label for="detalhe_${id}_altura">Altura</label>
                <input type="range" step="5" id="detalhe_${id}_altura" value="${height}" list="tickmarks">
              </div>
              <div class="range_wrap">
                <label for="detalhe_${id}_left">Posição X</label>
                <input type="range" step="5" id="detalhe_${id}_left" value="${left}" list="tickmarks">
                <label for="detalhe_${id}_largura">Largura</label>
                <input type="range" step="5" id="detalhe_${id}_largura" value="${width}" list="tickmarks">
                <div class="metadados">
                  <div class="just_read">
                    <span>Y:</span>
                    <input type="text" id="detalhe_${id}_top_meta" value="${top}%" disabled/>
                  </div>
                  <div class="just_read">
                    <span>X:</span>
                    <input type="text" id="detalhe_${id}_left_meta" value="${left}%" disabled/>
                  </div>
                  <div class="just_read">
                    <span>Largura:</span>
                    <input type="text" id="detalhe_${id}_largura_meta" value="${width}%" disabled/>
                  </div>
                  <div class="just_read">
                    <span>Altura:</span>
                    <input type="text" id="detalhe_${id}_altura_meta" value="${height}%" disabled/>
                  </div>
                </div>
              </div>
            </div>
          
            <datalist id="tickmarks">
              <option value="0" label="0%">
              <option value="10">
              <option value="20">
              <option value="30">
              <option value="40">
              <option value="50" label="50%">
              <option value="60">
              <option value="70">
              <option value="80">
              <option value="90">
              <option value="100" label="100%">
            </datalist>
            
            <button type="button" class="rem_detail" data-detail_id="${id}" >Remover detalhe</button>
          </div>
          `)

          get_slugs_array().then(function(response){
            console.log('slugs_array', response)
            $(".slug").autocomplete({
              source: response.data
            })
          })

          $("#details_wrap").append(`
            <div class="detail_box" style="width: ${width}%; height: ${height}%; top: ${top}%; left: ${left}%"><h5>${slug}</h5></div>
          `)
        })
      }
    }
  }

  $("#detalhes_wrap").on("input", "input[type=range]", function (e) {
    e.preventDefault();
    console.log('atualizando cordenadas no input')
    console.log("#"+$(this).attr("id")+"_meta")
    console.log(`${$(this).val()}%`)
    $("#"+$(this).attr("id")+"_meta").val(`${$(this).val()}%`)
    readDetails()
  })

  $("#detalhes_wrap").on("change", "input[type=range]", function (e) {
    e.preventDefault();
    showDetails()
  })

  $("#detalhes_wrap").on("change", ".slug", function (e) {
    e.preventDefault();
    readDetails()
    showDetails()
  })

  function readDetails() {
    var masks = $("#detalhes").text()
    if (masks) {
      masks = JSON.parse(masks)
      masks.forEach( function(elem, idx, array){
        var wraper = $(`.detalhe[data-id=${elem.id}]`),
        top = wraper.find(`#detalhe_${elem.id}_top`).val(),
        left = wraper.find(`#detalhe_${elem.id}_left`).val(),
        width = wraper.find(`#detalhe_${elem.id}_largura`).val(),
        height = wraper.find(`#detalhe_${elem.id}_altura`).val(),
        slug = wraper.find(`#detalhe_${elem.id}_slug`).val()
        
        console.log('array[idx]', array[idx])
        array[idx] = {
          ...array[idx],
          top, left, width, height, slug
        }
      })

      $("#detalhes").text(JSON.stringify(masks))
    }
  }

  
  function removeDetail(id){
    var masks = $("#detalhes").text()
    if (masks) {
      masks = JSON.parse(masks)
      tmpMasks = []
      masks.map( function(mask){
        if(mask.id !== parseInt(id)){
          tmpMasks.push(mask)
        }
      })
      console.log(masks)
      console.log('tmpMasks', tmpMasks)
      masks = tmpMasks
      $("#detalhes").text(JSON.stringify(masks))
      showDetails()
    }
  }
  
  $("#detalhes_wrap").on("click", "button.rem_detail", function (e) {
    e.preventDefault();
    console.log('excluir', e.target.dataset.detail_id)
    removeDetail(e.target.dataset.detail_id)
  })

  showDetails()

  /**
   * Máscaras
   */

  function addMask() {
    var masks = $("#mascaras").text()
    console.log('masks', masks)
    if (masks) {
      masks = JSON.parse(masks)
      if (masks.length) {
        // Adiciona mais uma máscara à lista
        console.log("Máscara com dados")
      } else {
        console.log("Máscara vazia")
        masks = []
      }
    } else {
      // Escreve o primeiro
      console.log("Máscara vazia")
      masks = []
    }

    // verifica qual o último id
    var length = masks.length,
    lastId = 0
    masks.map( function(e, i) {
      if(length === i+1){
        lastId = e.id
      }
    })

    masks.push({
      id: lastId+1,
      post: null,
      title: "",
      alias: "",
      description: "",
      color: "#bada55"
    })

    $("#mascaras").text(JSON.stringify(masks))
    showMasks()
  }

  /**
   * Função lê as máscaras que existe no campo textarea
   * e transcreve em inputs
   */
  function showMasks() {
    var masks = $("#mascaras").text()
    console.log(masks)
    if (masks) {
      masks = JSON.parse(masks)
      if (masks.length) {
        console.log('esse array tem tamanho então devo lê-lo')
        $("#mascaras_wrap").text("")
        masks.map(function ({ id, post, title, alias, color, description }) {
          $("#mascaras_wrap").append(`
          <div class="mascara" data-id="${id}">
            <div class="mascara_imagem" id="mascara_${id}_image"></div>
            <input type="hidden" id="mascara_${id}_id" value="${id}" placeholder="ID"/> 
            <input type="hidden" id="mascara_${id}_post" value="${post}" placeholder="post_ID" />
            <input type="text" id="mascara_${id}_title" value="${title}" placeholder="Título"/>
            <input type="text" id="mascara_${id}_alias" value="${alias}" placeholder="Apelido"/>
            <input type="text" id="mascara_${id}_description" value="${description}" placeholder="Descrição"/>
            <input type="text" id="mascara_${id}_color" value="${color}" class="color_picker" />
            <button type="button" class="add_image" data-field="mascara_${id}_post" data-image="mascara_${id}_image">Adicionar imagem</button>
            <button type="button" class="rem_mask" data-mask_id="${id}" >Remover máscara</button>
          </div>
          `)

          $('.color_picker').wpColorPicker({
            change: function(e, ui){
              e.preventDefault();
              setTimeout( readMasks, 2 )
            }
          });

          if(post){
            get_image(post, `mascara_${id}_image`)
          }
        })
      }
    }
  }

  function readMasks() {
    var masks = $("#mascaras").text()
    if (masks) {
      masks = JSON.parse(masks)
      masks.forEach( function(elem, idx, array){
        var wraper = $(`.mascara[data-id=${elem.id}]`),
        post = wraper.find(`#mascara_${elem.id}_post`).val(),
        title = wraper.find(`#mascara_${elem.id}_title`).val(),
        alias = wraper.find(`#mascara_${elem.id}_alias`).val(),
        description = wraper.find(`#mascara_${elem.id}_description`).val(),
        color = wraper.find(`#mascara_${elem.id}_color`).val()
        console.log('post', wraper.find(`#mascara_${elem.id}_post`).val())

        console.log('array[idx]', array[idx])
        array[idx].alias = alias
        array[idx] = {
          ...array[idx],
          post,
          title,
          alias,
          description,
          color
        }
      })

      $("#mascaras").text(JSON.stringify(masks))
    }
  }

  function removeMask(id){
    var masks = $("#mascaras").text()
    if (masks) {
      masks = JSON.parse(masks)
      tmpMasks = []
      masks.map( function(mask){
        if(mask.id !== parseInt(id)){
          tmpMasks.push(mask)
        }
      })
      console.log(masks)
      console.log('tmpMasks', tmpMasks)
      masks = tmpMasks
      $("#mascaras").text(JSON.stringify(masks))
      showMasks()
    }
  }

  $("#mascaras_wrap").on("click", "button.add_image", function (e) {
    e.preventDefault();
    openMediaManager(e)
  })

  $("#mascaras_wrap").on("click", "button.rem_mask", function (e) {
    e.preventDefault();
    console.log('excluir', e.target.dataset.mask_id)
    removeMask(e.target.dataset.mask_id)
  })

  $("#mascaras_wrap").on("keyup", "input", function (e) {
    e.preventDefault();
    readMasks()
  })

  $("#mascaras_wrap").on("change", ".color_picker", function (e) {
    e.preventDefault();
    readMasks()
  })

  showMasks()

  $("#add_mask_bt").click(function (e) {
    e.preventDefault()
    addMask()
  })

  /**
   * Campo de descrição
   */
  function filteredDescription(){
    var description = $("textarea#descricao").val(),
    masks = $("#mascaras").text()
    if (masks) {
      masks = JSON.parse(masks)
    }else{
      return description
    }

    masks.map( function({ alias }){
      var regex = new RegExp(` @${alias} `,"gi")
      var matches = description.match(regex)
      console.log('matches', matches, regex)
      if(matches){
        matches.map( function( match ){
          console.log(match)
          description = description.replace(match, ` <span class="blue">${match.replace(' ', '')}</span> `)
        })
      }
    })

    console.log('description', description)
    return description
  }

  $("textarea#descricao").keyup( function(e){
    console.log($(this).val())
    $("#textarea_text").html(filteredDescription())
  })

  $("textarea#descricao").blur( function(e){
    console.log($(this).val())
    $("#textarea_text").html(filteredDescription())
  })

  /**
   * Função importada para uso do modal próprio
   * do WORDPRESS de adicionar mídia
   */
  function openMediaManager(e) {
    var image_frame;
    if (image_frame) {
      image_frame.open();
    }
    // Define image_frame as wp.media object
    console.log('wp.media', wp.media)
    image_frame = wp.media({
      title: 'Selecione uma imagem',
      multiple: false,
      library: {
        type: 'image',
      }
    });
    console.log('image_frame', image_frame)

    image_frame.on('close', function () {
      // On close, get selections and save to the hidden input
      // plus other AJAX stuff to refresh the image preview
      var selection = image_frame.state().get('selection');
      var gallery_ids = new Array();
      var my_index = 0;
      selection.each(function (attachment) {
        gallery_ids[my_index] = attachment['id'];
        my_index++;
      });
      var ids = gallery_ids.join(",");
      $(`input#${e.target.dataset.field}`).val(ids);
      // Caso seja para máscara, rodar aplicação de escrever
      readMasks()
      get_image(ids, e.target.dataset.image)
    });

    image_frame.on('open', function () {
      // On open, get the id from the hidden input
      // and select the appropiate images in the media manager
      var selection = image_frame.state().get('selection');
      var ids = $(`input#${e.target.dataset.field}`).val().split(',');
      ids.forEach(function (id) {
        var attachment = wp.media.attachment(id);
        attachment.fetch();
        selection.add(attachment ? [attachment] : []);
      });

    });

    image_frame.open();
  }

  $('input#open_media_manager').click(function (e) {
    e.preventDefault();
    openMediaManager(e)
  });

})

// Ajax request to refresh the image preview
function get_image(the_id, image_wrap_id) {
  var data = {
    action: 'myprefix_get_image',
    id: the_id
  };

  jQuery.get(ajaxurl, data, function (response) {
    if (response.success === true) {
      console.log('image', response.data.image)
      jQuery(`#${image_wrap_id}`).text("");
      jQuery(`#${image_wrap_id}`).append(response.data.image);
    }
  });
}

// Ajax request to refresh subjects options
async function get_subjects(materia_id) {
  var result;

  var data = {
    action: 'get_assuntos',
    materia_id: materia_id
  };

  try{
    result = await jQuery.get(ajaxurl, data);
  } catch (error) {
    console.log('Error:', error)
  }

  return result
}

// Ajax para retornar array de slugs
async function get_slugs_array(){
  var result = [];

  var data = {
    action: 'get_slugs_array'
  };

  try{
    result = await jQuery.get(ajaxurl, data);
  } catch (error) {
    console.log('Error:', error)
  }

  return result
}