.class Lcom/mh/movie/core/c/e$a;
.super Landroid/content/BroadcastReceiver;
.source "WXShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/c/e;


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/c/e;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/mh/movie/core/c/e$a;->a:Lcom/mh/movie/core/c/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/c/e;Lcom/mh/movie/core/c/e$1;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lcom/mh/movie/core/c/e$a;-><init>(Lcom/mh/movie/core/c/e;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    const-string p1, "result"

    .line 256
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/Response;

    .line 258
    iget-object p2, p0, Lcom/mh/movie/core/c/e$a;->a:Lcom/mh/movie/core/c/e;

    invoke-static {p2}, Lcom/mh/movie/core/c/e;->a(Lcom/mh/movie/core/c/e;)Lcom/mh/movie/core/c/a;

    move-result-object p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/mh/movie/core/c/e$a;->a:Lcom/mh/movie/core/c/e;

    invoke-static {p1}, Lcom/mh/movie/core/c/e;->a(Lcom/mh/movie/core/c/e;)Lcom/mh/movie/core/c/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/c/a;->h()V

    return-void

    .line 263
    :cond_0
    iget p2, p1, Lcom/mh/movie/core/mvp/model/entity/Response;->errCode:I

    if-nez p2, :cond_1

    .line 264
    iget-object p1, p0, Lcom/mh/movie/core/c/e$a;->a:Lcom/mh/movie/core/c/e;

    invoke-static {p1}, Lcom/mh/movie/core/c/e;->a(Lcom/mh/movie/core/c/e;)Lcom/mh/movie/core/c/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/c/a;->h()V

    goto :goto_1

    .line 265
    :cond_1
    iget p2, p1, Lcom/mh/movie/core/mvp/model/entity/Response;->errCode:I

    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 266
    iget-object p1, p0, Lcom/mh/movie/core/c/e$a;->a:Lcom/mh/movie/core/c/e;

    invoke-static {p1}, Lcom/mh/movie/core/c/e;->a(Lcom/mh/movie/core/c/e;)Lcom/mh/movie/core/c/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/c/a;->k()V

    goto :goto_1

    .line 268
    :cond_2
    iget p1, p1, Lcom/mh/movie/core/mvp/model/entity/Response;->errCode:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "\u53d1\u9001\u8fd4\u56de"

    goto :goto_0

    :pswitch_0
    const-string p1, "\u53d1\u9001\u88ab\u62d2\u7edd"

    goto :goto_0

    :pswitch_1
    const-string p1, "\u4e0d\u652f\u6301\u9519\u8bef"

    .line 279
    :goto_0
    iget-object p2, p0, Lcom/mh/movie/core/c/e$a;->a:Lcom/mh/movie/core/c/e;

    invoke-static {p2}, Lcom/mh/movie/core/c/e;->a(Lcom/mh/movie/core/c/e;)Lcom/mh/movie/core/c/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mh/movie/core/c/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 283
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
