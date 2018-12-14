.class public Lcom/alibaba/sdk/android/httpdns/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false

.field private static b:Lcom/alibaba/sdk/android/httpdns/a/f;

.field private static c:Lcom/alibaba/sdk/android/httpdns/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/httpdns/a/b;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/httpdns/a/h;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/sdk/android/httpdns/a/h;)V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/a/a;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/httpdns/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/a/b;->b:Lcom/alibaba/sdk/android/httpdns/a/f;

    sput-object p1, Lcom/alibaba/sdk/android/httpdns/a/b;->c:Lcom/alibaba/sdk/android/httpdns/a/h;

    sget-object p0, Lcom/alibaba/sdk/android/httpdns/a/b;->c:Lcom/alibaba/sdk/android/httpdns/a/h;

    if-nez p0, :cond_0

    new-instance p0, Lcom/alibaba/sdk/android/httpdns/a/h;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/a/h;-><init>()V

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/a/b;->c:Lcom/alibaba/sdk/android/httpdns/a/h;

    :cond_0
    return-void
.end method

.method public static a(Lcom/alibaba/sdk/android/httpdns/a/e;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/a/b;->b:Lcom/alibaba/sdk/android/httpdns/a/f;

    invoke-interface {v0, p0}, Lcom/alibaba/sdk/android/httpdns/a/f;->a(Lcom/alibaba/sdk/android/httpdns/a/e;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/a/b;->a:Z

    return v0
.end method

.method public static b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/a/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lcom/alibaba/sdk/android/httpdns/a/b;->a:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/a/b;->b:Lcom/alibaba/sdk/android/httpdns/a/f;

    invoke-interface {v1}, Lcom/alibaba/sdk/android/httpdns/a/f;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/a/b;->c:Lcom/alibaba/sdk/android/httpdns/a/h;

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/httpdns/a/h;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static b(Lcom/alibaba/sdk/android/httpdns/a/e;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/a/b;->b:Lcom/alibaba/sdk/android/httpdns/a/f;

    invoke-interface {v0, p0}, Lcom/alibaba/sdk/android/httpdns/a/f;->b(Lcom/alibaba/sdk/android/httpdns/a/e;)V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/a/b;->c:Lcom/alibaba/sdk/android/httpdns/a/h;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/a/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
