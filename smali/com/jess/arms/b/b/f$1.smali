.class final Lcom/jess/arms/b/b/f$1;
.super Ljava/lang/Object;
.source "ClientModule.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jess/arms/b/b/f;->a(Landroid/app/Application;Lcom/jess/arms/b/b/f$b;Lokhttp3/OkHttpClient$Builder;Lokhttp3/Interceptor;Ljava/util/List;Lcom/jess/arms/http/b;)Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jess/arms/http/b;


# direct methods
.method constructor <init>(Lcom/jess/arms/http/b;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/jess/arms/b/b/f$1;->a:Lcom/jess/arms/http/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/jess/arms/b/b/f$1;->a:Lcom/jess/arms/http/b;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/jess/arms/http/b;->a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
