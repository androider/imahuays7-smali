.class final Lcom/mh/movie/core/mvp/ui/utils/a/a$2;
.super Ljava/lang/Object;
.source "CheckDomainUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/a/a;->e(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$2;->a:I

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$2;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$2;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 184
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->b()I

    move-result p1

    iget p2, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$2;->a:I

    if-ge p1, p2, :cond_0

    .line 187
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$2;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$2;->c:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->c(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 191
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->b(I)I

    .line 194
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$2;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->b(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .line 202
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$2;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->a(Landroid/content/Context;Lokhttp3/Response;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 208
    invoke-virtual {p0, p1, p1}, Lcom/mh/movie/core/mvp/ui/utils/a/a$2;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
