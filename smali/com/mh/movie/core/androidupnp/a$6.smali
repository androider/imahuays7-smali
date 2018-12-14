.class Lcom/mh/movie/core/androidupnp/a$6;
.super Ljava/lang/Object;
.source "AndroidupnpMain.java"

# interfaces
.implements Lcom/mh/movie/core/androidupnp/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/androidupnp/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/androidupnp/a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/androidupnp/a;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/a$6;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/androidupnp/b/i;)V
    .locals 1

    .line 360
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pause success"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Lcom/mh/movie/core/androidupnp/b/i;)V
    .locals 1

    .line 365
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pause fail"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
