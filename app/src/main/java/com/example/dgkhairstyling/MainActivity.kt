package com.example.dgkhairstyling

import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_loading)

        // Handler to start the LoginActivity and close this LoadingScreen after 3 seconds
        Handler(Looper.getMainLooper()).postDelayed({
            val mainIntent = Intent(
                this@MainActivity,
                LoginActivity::class.java
            )
            this@MainActivity.startActivity(mainIntent)
            this@MainActivity.finish()
        }, LOADING_SCREEN_DISPLAY_LENGTH.toLong())
    }

    companion object {
        private const val LOADING_SCREEN_DISPLAY_LENGTH = 3000 // 3 seconds
    }
}