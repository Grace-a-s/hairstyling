package com.example.dgkhairstyling;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import androidx.annotation.Nullable;

public class DatabaseHelper extends SQLiteOpenHelper {
        private Context context;
        public static final String DATABASE_NAME = "hair.db";
        public static final int DATABASE_VERSION = 1;
        public static final  String TABLE_NAME = "user";
        public DatabaseHelper(@Nullable Context context) //@Nullable String name, @Nullable SQLiteDatabase.CursorFactory factory, int version) {
        {  super(context, DATABASE_NAME, null, DATABASE_VERSION);
                this.context = context;
        }

        @Override
        public void onCreate(SQLiteDatabase sqLiteDatabase) {
            String query = "CREATE TABLE" + TABLE_NAME + "()"; //incomplete
        }

        @Override
        public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i1) {

        }
}
