.class public Lcom/jess/arms/a/j;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.zhy.autolayout.AutoLayoutInfo"

    .line 33
    invoke-static {v0}, Lcom/jess/arms/a/j;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/jess/arms/a/j;->a:Z

    const-string v0, "android.support.design.widget.Snackbar"

    .line 34
    invoke-static {v0}, Lcom/jess/arms/a/j;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/jess/arms/a/j;->b:Z

    const-string v0, "com.bumptech.glide.Glide"

    .line 35
    invoke-static {v0}, Lcom/jess/arms/a/j;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/jess/arms/a/j;->c:Z

    const-string v0, "org.simple.eventbus.EventBus"

    .line 36
    invoke-static {v0}, Lcom/jess/arms/a/j;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/jess/arms/a/j;->d:Z

    const-string v0, "org.greenrobot.eventbus.EventBus"

    .line 37
    invoke-static {v0}, Lcom/jess/arms/a/j;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/jess/arms/a/j;->e:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 0

    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
