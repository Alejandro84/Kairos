   <script type="text/javascript"../../assets/js/jquery.min.js'); ?>"></script>
   <script type="text/javascript"../../assets/js/tether.min.js'); ?>"></script>
   <script type="text/javascript"../../assets/js/bootstrap.min.js'); ?>"></script>
   <script type="text/javascript"../../assets/js/awesomplete.min.js'); ?>"></script>

   <? if ( isset($javascript) )
   {
      foreach ( $javascript as $js )
      {
         echo '<script type="text/javascript"../../assets/js/'.$js.'.js').'"></script>';
      }

   } ?>

</body>
</html>
