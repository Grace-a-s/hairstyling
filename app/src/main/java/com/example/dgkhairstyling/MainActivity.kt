package com.example.dgkhairstyling

import android.os.Bundle
import androidx.activity.*
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.*
import androidx.compose.ui.tooling.preview.Preview
import com.example.dgkhairstyling.ui.theme.DGKHairstylingTheme
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;


public class MainActivity extends AppCompatActivity {

    private EditText usernameInput;
    private EditText passwordInput;
    private Button loginButton;

