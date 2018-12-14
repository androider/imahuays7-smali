.class public final Lme/jessyan/autosize/AutoSizeConfig;
.super Ljava/lang/Object;
.source "AutoSizeConfig.java"


# static fields
.field private static final KEY_DESIGN_HEIGHT_IN_DP:Ljava/lang/String; = "design_height_in_dp"

.field private static final KEY_DESIGN_WIDTH_IN_DP:Ljava/lang/String; = "design_width_in_dp"

.field private static volatile sInstance:Lme/jessyan/autosize/AutoSizeConfig;


# instance fields
.field private isBaseOnWidth:Z

.field private isCustomFragment:Z

.field private isStop:Z

.field private isUseDeviceSize:Z

.field private isVertical:Z

.field private mActivityLifecycleCallbacks:Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;

.field private mApplication:Landroid/app/Application;

.field private mDesignHeightInDp:I

.field private mDesignWidthInDp:I

.field private mExternalAdaptManager:Lme/jessyan/autosize/external/ExternalAdaptManager;

.field private mInitDensity:F

.field private mInitDensityDpi:I

.field private mInitScaledDensity:F

.field private mInitXdpi:F

.field private mOnAdaptListener:Lme/jessyan/autosize/onAdaptListener;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mUnitsManager:Lme/jessyan/autosize/unit/UnitsManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lme/jessyan/autosize/external/ExternalAdaptManager;

    invoke-direct {v0}, Lme/jessyan/autosize/external/ExternalAdaptManager;-><init>()V

    iput-object v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mExternalAdaptManager:Lme/jessyan/autosize/external/ExternalAdaptManager;

    .line 56
    new-instance v0, Lme/jessyan/autosize/unit/UnitsManager;

    invoke-direct {v0}, Lme/jessyan/autosize/unit/UnitsManager;-><init>()V

    iput-object v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mUnitsManager:Lme/jessyan/autosize/unit/UnitsManager;

    const/high16 v0, -0x40800000    # -1.0f

    .line 60
    iput v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitDensity:F

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->isBaseOnWidth:Z

    .line 101
    iput-boolean v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->isUseDeviceSize:Z

    return-void
.end method

.method static synthetic access$000(Lme/jessyan/autosize/AutoSizeConfig;)F
    .locals 0

    .line 44
    iget p0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitScaledDensity:F

    return p0
.end method

.method static synthetic access$002(Lme/jessyan/autosize/AutoSizeConfig;F)F
    .locals 0

    .line 44
    iput p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitScaledDensity:F

    return p1
.end method

.method static synthetic access$102(Lme/jessyan/autosize/AutoSizeConfig;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->isVertical:Z

    return p1
.end method

.method static synthetic access$202(Lme/jessyan/autosize/AutoSizeConfig;I)I
    .locals 0

    .line 44
    iput p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mScreenWidth:I

    return p1
.end method

.method static synthetic access$302(Lme/jessyan/autosize/AutoSizeConfig;I)I
    .locals 0

    .line 44
    iput p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mScreenHeight:I

    return p1
.end method

.method static synthetic access$402(Lme/jessyan/autosize/AutoSizeConfig;I)I
    .locals 0

    .line 44
    iput p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mDesignWidthInDp:I

    return p1
.end method

.method static synthetic access$502(Lme/jessyan/autosize/AutoSizeConfig;I)I
    .locals 0

    .line 44
    iput p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mDesignHeightInDp:I

    return p1
.end method

.method public static getInstance()Lme/jessyan/autosize/AutoSizeConfig;
    .locals 2

    .line 128
    sget-object v0, Lme/jessyan/autosize/AutoSizeConfig;->sInstance:Lme/jessyan/autosize/AutoSizeConfig;

    if-nez v0, :cond_1

    .line 129
    const-class v0, Lme/jessyan/autosize/AutoSizeConfig;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lme/jessyan/autosize/AutoSizeConfig;->sInstance:Lme/jessyan/autosize/AutoSizeConfig;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lme/jessyan/autosize/AutoSizeConfig;

    invoke-direct {v1}, Lme/jessyan/autosize/AutoSizeConfig;-><init>()V

    sput-object v1, Lme/jessyan/autosize/AutoSizeConfig;->sInstance:Lme/jessyan/autosize/AutoSizeConfig;

    .line 133
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 135
    :cond_1
    :goto_0
    sget-object v0, Lme/jessyan/autosize/AutoSizeConfig;->sInstance:Lme/jessyan/autosize/AutoSizeConfig;

    return-object v0
.end method

.method private getMetaData(Landroid/content/Context;)V
    .locals 2

    .line 522
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lme/jessyan/autosize/AutoSizeConfig$2;

    invoke-direct {v1, p0, p1}, Lme/jessyan/autosize/AutoSizeConfig$2;-><init>(Lme/jessyan/autosize/AutoSizeConfig;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 542
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getApplication()Landroid/app/Application;
    .locals 2

    .line 142
    iget-object v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mApplication:Landroid/app/Application;

    const-string v1, "Please call the AutoSizeConfig#init() first"

    invoke-static {v0, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getDesignHeightInDp()I
    .locals 2

    .line 410
    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mDesignHeightInDp:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "you must set design_height_in_dp  in your AndroidManifest file"

    invoke-static {v0, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 411
    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mDesignHeightInDp:I

    return v0
.end method

.method public getDesignWidthInDp()I
    .locals 2

    .line 400
    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mDesignWidthInDp:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "you must set design_width_in_dp  in your AndroidManifest file"

    invoke-static {v0, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 401
    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mDesignWidthInDp:I

    return v0
.end method

.method public getExternalAdaptManager()Lme/jessyan/autosize/external/ExternalAdaptManager;
    .locals 1

    .line 337
    iget-object v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mExternalAdaptManager:Lme/jessyan/autosize/external/ExternalAdaptManager;

    return-object v0
.end method

.method public getInitDensity()F
    .locals 1

    .line 420
    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitDensity:F

    return v0
.end method

.method public getInitDensityDpi()I
    .locals 1

    .line 429
    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitDensityDpi:I

    return v0
.end method

.method public getInitScaledDensity()F
    .locals 1

    .line 438
    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitScaledDensity:F

    return v0
.end method

.method public getInitXdpi()F
    .locals 1

    .line 447
    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitXdpi:F

    return v0
.end method

.method public getOnAdaptListener()Lme/jessyan/autosize/onAdaptListener;
    .locals 1

    .line 355
    iget-object v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mOnAdaptListener:Lme/jessyan/autosize/onAdaptListener;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 2

    .line 391
    invoke-virtual {p0}, Lme/jessyan/autosize/AutoSizeConfig;->isUseDeviceSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mScreenHeight:I

    invoke-static {}, Lme/jessyan/autosize/utils/ScreenUtils;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 382
    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mScreenWidth:I

    return v0
.end method

.method public getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;
    .locals 1

    .line 346
    iget-object v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mUnitsManager:Lme/jessyan/autosize/unit/UnitsManager;

    return-object v0
.end method

.method init(Landroid/app/Application;)Lme/jessyan/autosize/AutoSizeConfig;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0, p1, v0, v1}, Lme/jessyan/autosize/AutoSizeConfig;->init(Landroid/app/Application;ZLme/jessyan/autosize/AutoAdaptStrategy;)Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object p1

    return-object p1
.end method

.method init(Landroid/app/Application;Z)Lme/jessyan/autosize/AutoSizeConfig;
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, p1, p2, v0}, Lme/jessyan/autosize/AutoSizeConfig;->init(Landroid/app/Application;ZLme/jessyan/autosize/AutoAdaptStrategy;)Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object p1

    return-object p1
.end method

.method init(Landroid/app/Application;ZLme/jessyan/autosize/AutoAdaptStrategy;)Lme/jessyan/autosize/AutoSizeConfig;
    .locals 4

    .line 176
    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitDensity:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "AutoSizeConfig#init() can only be called once"

    invoke-static {v0, v3}, Lme/jessyan/autosize/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string v0, "application == null"

    .line 177
    invoke-static {p1, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iput-object p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mApplication:Landroid/app/Application;

    .line 179
    iput-boolean p2, p0, Lme/jessyan/autosize/AutoSizeConfig;->isBaseOnWidth:Z

    .line 180
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 182
    invoke-direct {p0, p1}, Lme/jessyan/autosize/AutoSizeConfig;->getMetaData(Landroid/content/Context;)V

    .line 183
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->isVertical:Z

    .line 184
    invoke-static {p1}, Lme/jessyan/autosize/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 185
    aget v1, v0, v1

    iput v1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mScreenWidth:I

    .line 186
    aget v0, v0, v2

    iput v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mScreenHeight:I

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "designWidthInDp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mDesignWidthInDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", designHeightInDp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mDesignHeightInDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 189
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitDensity:F

    .line 190
    iget v0, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitDensityDpi:I

    .line 191
    iget v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitScaledDensity:F

    .line 192
    iget p2, p2, Landroid/util/DisplayMetrics;->xdpi:F

    iput p2, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitXdpi:F

    .line 193
    new-instance p2, Lme/jessyan/autosize/AutoSizeConfig$1;

    invoke-direct {p2, p0, p1}, Lme/jessyan/autosize/AutoSizeConfig$1;-><init>(Lme/jessyan/autosize/AutoSizeConfig;Landroid/app/Application;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initDensity = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitDensity:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", initScaledDensity = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mInitScaledDensity:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 215
    new-instance p2, Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;

    if-nez p3, :cond_2

    new-instance p3, Lme/jessyan/autosize/WrapperAutoAdaptStrategy;

    new-instance v0, Lme/jessyan/autosize/DefaultAutoAdaptStrategy;

    invoke-direct {v0}, Lme/jessyan/autosize/DefaultAutoAdaptStrategy;-><init>()V

    invoke-direct {p3, v0}, Lme/jessyan/autosize/WrapperAutoAdaptStrategy;-><init>(Lme/jessyan/autosize/AutoAdaptStrategy;)V

    :cond_2
    invoke-direct {p2, p3}, Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;-><init>(Lme/jessyan/autosize/AutoAdaptStrategy;)V

    iput-object p2, p0, Lme/jessyan/autosize/AutoSizeConfig;->mActivityLifecycleCallbacks:Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;

    .line 216
    iget-object p2, p0, Lme/jessyan/autosize/AutoSizeConfig;->mActivityLifecycleCallbacks:Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object p0
.end method

.method public isBaseOnWidth()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->isBaseOnWidth:Z

    return v0
.end method

.method public isCustomFragment()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->isCustomFragment:Z

    return v0
.end method

.method public isStop()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->isStop:Z

    return v0
.end method

.method public isUseDeviceSize()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->isUseDeviceSize:Z

    return v0
.end method

.method public isVertical()Z
    .locals 1

    .line 456
    iget-boolean v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->isVertical:Z

    return v0
.end method

.method public restart()V
    .locals 3

    .line 225
    iget-object v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mActivityLifecycleCallbacks:Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;

    const-string v1, "Please call the AutoSizeConfig#init() first"

    invoke-static {v0, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-class v0, Lme/jessyan/autosize/AutoSizeConfig;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-boolean v1, p0, Lme/jessyan/autosize/AutoSizeConfig;->isStop:Z

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mApplication:Landroid/app/Application;

    iget-object v2, p0, Lme/jessyan/autosize/AutoSizeConfig;->mActivityLifecycleCallbacks:Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v1, 0x0

    .line 229
    iput-boolean v1, p0, Lme/jessyan/autosize/AutoSizeConfig;->isStop:Z

    .line 231
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAutoAdaptStrategy(Lme/jessyan/autosize/AutoAdaptStrategy;)Lme/jessyan/autosize/AutoSizeConfig;
    .locals 2

    const-string v0, "autoAdaptStrategy == null"

    .line 255
    invoke-static {p1, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mActivityLifecycleCallbacks:Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;

    const-string v1, "Please call the AutoSizeConfig#init() first"

    invoke-static {v0, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mActivityLifecycleCallbacks:Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;

    new-instance v1, Lme/jessyan/autosize/WrapperAutoAdaptStrategy;

    invoke-direct {v1, p1}, Lme/jessyan/autosize/WrapperAutoAdaptStrategy;-><init>(Lme/jessyan/autosize/AutoAdaptStrategy;)V

    invoke-virtual {v0, v1}, Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;->setAutoAdaptStrategy(Lme/jessyan/autosize/AutoAdaptStrategy;)V

    return-object p0
.end method

.method public setBaseOnWidth(Z)Lme/jessyan/autosize/AutoSizeConfig;
    .locals 0

    .line 278
    iput-boolean p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->isBaseOnWidth:Z

    return-object p0
.end method

.method public setCustomFragment(Z)Lme/jessyan/autosize/AutoSizeConfig;
    .locals 0

    .line 309
    iput-boolean p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->isCustomFragment:Z

    return-object p0
.end method

.method public setDesignHeightInDp(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "designHeightInDp must be > 0"

    .line 504
    invoke-static {v0, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 505
    iput p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mDesignHeightInDp:I

    return-void
.end method

.method public setDesignWidthInDp(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "designWidthInDp must be > 0"

    .line 494
    invoke-static {v0, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 495
    iput p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mDesignWidthInDp:I

    return-void
.end method

.method public setLog(Z)Lme/jessyan/autosize/AutoSizeConfig;
    .locals 0

    .line 299
    invoke-static {p1}, Lme/jessyan/autosize/utils/LogUtils;->setDebug(Z)V

    return-object p0
.end method

.method public setOnAdaptListener(Lme/jessyan/autosize/onAdaptListener;)V
    .locals 1

    const-string v0, "onAdaptListener == null"

    .line 267
    invoke-static {p1, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iput-object p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mOnAdaptListener:Lme/jessyan/autosize/onAdaptListener;

    return-void
.end method

.method public setScreenHeight(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "screenHeight must be > 0"

    .line 484
    invoke-static {v0, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 485
    iput p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mScreenHeight:I

    return-void
.end method

.method public setScreenWidth(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "screenWidth must be > 0"

    .line 474
    invoke-static {v0, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 475
    iput p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mScreenWidth:I

    return-void
.end method

.method public setUseDeviceSize(Z)Lme/jessyan/autosize/AutoSizeConfig;
    .locals 0

    .line 289
    iput-boolean p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->isUseDeviceSize:Z

    return-object p0
.end method

.method public setVertical(Z)V
    .locals 0

    .line 465
    iput-boolean p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->isVertical:Z

    return-void
.end method

.method public stop(Landroid/app/Activity;)V
    .locals 3

    .line 239
    iget-object v0, p0, Lme/jessyan/autosize/AutoSizeConfig;->mActivityLifecycleCallbacks:Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;

    const-string v1, "Please call the AutoSizeConfig#init() first"

    invoke-static {v0, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-class v0, Lme/jessyan/autosize/AutoSizeConfig;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-boolean v1, p0, Lme/jessyan/autosize/AutoSizeConfig;->isStop:Z

    if-nez v1, :cond_0

    .line 242
    iget-object v1, p0, Lme/jessyan/autosize/AutoSizeConfig;->mApplication:Landroid/app/Application;

    iget-object v2, p0, Lme/jessyan/autosize/AutoSizeConfig;->mActivityLifecycleCallbacks:Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 243
    invoke-static {p1}, Lme/jessyan/autosize/AutoSize;->cancelAdapt(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 244
    iput-boolean p1, p0, Lme/jessyan/autosize/AutoSizeConfig;->isStop:Z

    .line 246
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
