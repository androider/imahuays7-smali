.class final Lcom/mh/movie/core/mvp/ui/utils/a/a$3;
.super Ljava/lang/Object;
.source "CheckDomainUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/a/a;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 235
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->c()V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .line 241
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$3;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->a(Landroid/content/Context;Lokhttp3/Response;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 244
    invoke-virtual {p0, p1, p1}, Lcom/mh/movie/core/mvp/ui/utils/a/a$3;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
