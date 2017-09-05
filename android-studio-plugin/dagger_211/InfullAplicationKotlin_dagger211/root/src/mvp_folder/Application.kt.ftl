package ${relativePackage}

import android.app.Activity
import android.app.Application
import ${relativePackage}.di.${moduleClass}
import ${relativePackage}.di.Dagger${componentClass}
import dagger.android.AndroidInjector
import dagger.android.DispatchingAndroidInjector
import dagger.android.HasActivityInjector
import javax.inject.Inject

class ${applicationClass} : Application(), HasActivityInjector {

    @Inject lateinit var dispatchingAndroidInjector: DispatchingAndroidInjector<Activity>

    override fun onCreate() {
        super.onCreate()
        Dagger${componentClass}.builder()
                .appModule(${moduleClass}(this))
                .application(this)
                .build()
                .inject(this)
    }

    override fun activityInjector(): AndroidInjector<Activity> = dispatchingAndroidInjector
}