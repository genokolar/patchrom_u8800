/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.huaweispecialsettings;
import android.app.ActivityManagerNative;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.PreferenceActivity;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;
import android.util.Log;
import android.view.IWindowManager;
import android.view.Surface;
import android.view.MenuItem;
import android.app.ActionBar;
import android.os.SystemProperties;

import java.util.ArrayList;

public class HuaWeiSpecialSettings extends PreferenceActivity{
    private static final String KEY_DUALMIC = "dualmic";
    private static final String KEY_HEADSETMIC = "headsetmic";

    private static final String DUALMIC_PROPERTY = "persist.sys.dualmic.enabled";
    private static final String HEADSETMIC_PROPERTY = "persist.sys.headsetmic.enabled";
 

    private CheckBoxPreference mDualMic;
    private CheckBoxPreference mHeadsetMic;
 
    public void onCreate(Bundle savedInstanceState) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
              actionBar.setHomeButtonEnabled(true);
        }
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.huawei_special_settings);
        mDualMic = (CheckBoxPreference) findPreference(KEY_DUALMIC);
        mDualMic.setChecked(SystemProperties.getBoolean(DUALMIC_PROPERTY, false));

        mHeadsetMic = (CheckBoxPreference) findPreference(KEY_HEADSETMIC);
        mHeadsetMic.setChecked(SystemProperties.getBoolean(HEADSETMIC_PROPERTY, false));
    }
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mDualMic) {
            SystemProperties.set(DUALMIC_PROPERTY, mDualMic.isChecked() ? "1" : "0");
        } else if (preference == mHeadsetMic) {
            SystemProperties.set(HEADSETMIC_PROPERTY, mHeadsetMic.isChecked() ? "1" : "0");
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }
}


