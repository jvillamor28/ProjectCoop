/* Global js */
$(document).ready(function() {
//    $(function() { // wait for document to load 
//        $('#T7').MultiFile({
//            list: '#T7-list'
//        });
//    });

    $("tr").hover(function() {
        $(this).find('.table-close-edit').stop().show();
    }, function() {
        $(this).find('.table-close-edit').stop().hide();
    });

    /* project status*/
    $('.status').click(function() {
        var classes = new Array('notstarted', 'in-progress', 'pastdue', 'complete', 'paused');
        var htmls = new Array('Not started', 'In progress', 'Past due', 'Completed', 'On Hold');
        for (var i = 0; i < classes.length; i++) {
            if ($(this).hasClass(classes[i])) {
                var nextitem = (i + 1 < classes.length) ? i + 1 : 0;
                $(this).removeClass(classes[i])
                        .addClass(classes[nextitem])
                        .html(htmls[nextitem]);
                return;
            }
        }
    });
    /*datepicker*/

    $(".date-from").datepicker();


    $(".date-to").datepicker();


    /* Selectable */

    $("#selectable").selectable();


    /*radio button*/

    $("#radio").buttonset();


    /*tabs*/
    $("#b-tabs").tabs({fx: {opacity: 'toogle', duration: "fast"}});

    /*close edit client*/
    $("li:odd, li:even").hover(function() {
        $(this).find('.option-close-edit').stop().show();
    }, function() {
        $(this).find('.option-close-edit').stop().hide();
    });


    /*li even odd*/
    $('ul.view-list li:even').addClass('odd');
    $('ul.view-list li:odd').addClass('even');
    /*accordion*/
    $("#accordion").accordion();
    /*sidebar add task*/
    $(".add-task").click(function() {
        $('.add-task-form').slideDown('slow', 'easeOutCubic');
    });

    $(".cancel-btn").click(function() {
        $('.add-task-form').slideUp('slow', 'easeOutQuint');
    });

    $(".cancel-task-btn").click(function() {
        $('.new-task-btn').slideDown('slow', 'easeOutCubic');
        $('.task-container').slideUp('slow', 'easeOutQuint');
    });

    /* new client form */
    $(".morefields").click(function() {
        $(this).hide();
        $('.hide').slideDown('slow', 'easeOutQuint');
        $('.hidefields').slideDown('slow', 'easeOutQuint');
    });

    $(".hidefields").click(function() {
        $('.morefields').slideDown('slow', 'easeOutQuint');
        $('.hide').slideUp('slow', 'easeOutQuint');
        $(this).hide();
    });


    /*message*/
    $(".send-message-btn").click(function() {
        $(this).hide();
        $('.msg-container').slideDown('slow', 'easeOutCubic');
    });

    $(".cancel-message-btn").click(function() {
        $('.send-message-btn').slideDown('slow', 'easeOutCubic');
        $('.msg-container').slideUp('slow', 'easeOutCubic');
    });



    $("textarea").keyup(function(e) {
        while ($(this).outerHeight() < this.scrollHeight + parseFloat($(this).css("borderTopWidth")) + parseFloat($(this).css("borderBottomWidth"))) {
            $(this).height($(this).height() + 1);
        }
        ;
    });

    /* table */
    if ($('#example').attr('id') == 'example') {
        $('#example').dataTable();
    }

    if ($('#example2').attr('id') == 'example2') {
        $('#example2').dataTable();
    }


    /* new task */

    $('.new-task-btn').click(function() {
        $(this).hide();
        $('.task-container').slideDown('slow', 'easeOutQuint');
    });


    $('ul .task-priority li').click(function() {
        if ($(this).hasClass('orange')) {
            $(this).removeClass('orange').addClass('orange');
            return;
        }
    });

   

    $("#dialog").dialog({
        autoOpen: false,
        show: "Clip",
        hide: "Clip"
    });

    $(".icon-clock").click(function() {
        $("#dialog").dialog("open");
        return false;
    });


});

