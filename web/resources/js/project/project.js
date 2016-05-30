/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

(function($) {
    $(function() {
        $('.save-task-btn').click(function() {
            console.log(prepareData());
        });
        
        function prepareData() {
            var data = {
                projectName: '',
                projectNote: '',
                projectWebsite: '',
                projectStart: '',
                projectEnd: '',
                projectCategory: '',
                status: ''
            };
            
            return data;
        }
    });
})(jQuery);


