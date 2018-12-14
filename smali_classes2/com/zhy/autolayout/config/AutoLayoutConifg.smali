.class public Lcom/zhy/autolayout/config/AutoLayoutConifg;
.super Ljava/lang/Object;
.source "AutoLayoutConifg.java"


# static fields
.field private static final KEY_DESIGN_HEIGHT:Ljava/lang/String; = "design_height"

.field private static final KEY_DESIGN_WIDTH:Ljava/lang/String; = "design_width"

.field private static sIntance:Lcom/zhy/autolayout/config/AutoLayoutConifg;


# instance fields
.field private mDesignHeight:I

.field private mDesignWidth:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private useDeviceSize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/zhy/autolayout/config/AutoLayoutConifg;

    invoke-direct {v0}, Lcom/zhy/autolayout/config/AutoLayoutConifg;-><init>()V

    sput-object v0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->sIntance:Lcom/zhy/autolayout/config/AutoLayoutConifg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;
    .locals 1

    .line 53
    sget-object v0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->sIntance:Lcom/zhy/autolayout/config/AutoLayoutConifg;

    return-object v0
.end method

.method private getMetaData(Landroid/content/Context;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 94
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "design_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mDesignWidth:I

    .line 99
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "design_height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mDesignHeight:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " designWidth ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mDesignWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , designHeight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mDesignHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zhy/autolayout/utils/L;->e(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you must set design_width and design_height  in your manifest file."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public checkParams()V
    .locals 2

    .line 37
    iget v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mDesignHeight:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mDesignWidth:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 39
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you must set design_width and design_height  in your manifest file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDesignHeight()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mDesignHeight:I

    return v0
.end method

.method public getDesignWidth()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mDesignWidth:I

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mScreenWidth:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getMetaData(Landroid/content/Context;)V

    .line 82
    iget-boolean v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->useDeviceSize:Z

    invoke-static {p1, v0}, Lcom/zhy/autolayout/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 83
    aget v0, p1, v0

    iput v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mScreenWidth:I

    const/4 v0, 0x1

    .line 84
    aget p1, p1, v0

    iput p1, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mScreenHeight:I

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " screenWidth ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mScreenWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,screenHeight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->mScreenHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zhy/autolayout/utils/L;->e(Ljava/lang/String;)V

    return-void
.end method

.method public useDeviceSize()Lcom/zhy/autolayout/config/AutoLayoutConifg;
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/zhy/autolayout/config/AutoLayoutConifg;->useDeviceSize:Z

    return-object p0
.end method
