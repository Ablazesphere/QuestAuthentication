import 'package:supabase/supabase.dart';

class SupabaseCredentials {
  static const String APIKEY =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpvbWZvc3pzc3R6cXN6cWZ5b2llIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjU1OTU1OTksImV4cCI6MTk4MTE3MTU5OX0.f3qigEYXYgo8hawS3cGNa0KA8Gxb3iVliAR16rvuBII";
  static const String APIURL = "https://zomfoszsstzqszqfyoie.supabase.co";

  static SupabaseClient supabaseClient = SupabaseClient(APIURL, APIKEY);
}
