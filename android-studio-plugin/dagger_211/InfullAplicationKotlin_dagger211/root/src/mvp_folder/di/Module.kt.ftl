package ${relativePackage}.di;

import android.content.Context;
import ${relativePackage}.${applicationClass};

import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton

@Module(subcomponents = arrayOf(/*subcomponents go here*/))
open class ${moduleClass} constructor(private val app: ${applicationClass}) {

    @Provides
    @Singleton
    fun providesContext(): Context {
        return app
    }
}
