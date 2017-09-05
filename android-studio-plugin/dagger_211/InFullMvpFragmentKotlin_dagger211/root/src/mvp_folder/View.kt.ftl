package ${relativePackage}

import android.support.annotation.LayoutRes
import com.infullmobile.android.infullmvp.PresentedFragmentView
import ${rPackage}.R

import javax.inject.Inject

open class ${viewClass} @Inject constructor(
): PresentedFragmentView<${presenterClass}>() {

    @LayoutRes override val layoutResId = R.layout.${layoutName}

    override fun onViewsBound() {
        /* empty */
    }
}
