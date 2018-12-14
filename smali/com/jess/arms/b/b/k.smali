.class public final Lcom/jess/arms/b/b/k;
.super Ljava/lang/Object;
.source "ClientModule_ProvideRetrofitFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/b/b/f$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/HttpUrl;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/b/b/f$c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/HttpUrl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/e;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/jess/arms/b/b/k;->a:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/jess/arms/b/b/k;->b:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/jess/arms/b/b/k;->c:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lcom/jess/arms/b/b/k;->d:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/jess/arms/b/b/k;->e:Ljavax/inject/Provider;

    .line 42
    iput-object p6, p0, Lcom/jess/arms/b/b/k;->f:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/jess/arms/b/b/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/b/b/f$c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/HttpUrl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/e;",
            ">;)",
            "Lcom/jess/arms/b/b/k;"
        }
    .end annotation

    .line 65
    new-instance v7, Lcom/jess/arms/b/b/k;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/jess/arms/b/b/k;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method


# virtual methods
.method public a()Lretrofit2/Retrofit;
    .locals 7

    .line 47
    iget-object v0, p0, Lcom/jess/arms/b/b/k;->a:Ljavax/inject/Provider;

    .line 49
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    iget-object v0, p0, Lcom/jess/arms/b/b/k;->b:Ljavax/inject/Provider;

    .line 50
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/jess/arms/b/b/f$c;

    iget-object v0, p0, Lcom/jess/arms/b/b/k;->c:Ljavax/inject/Provider;

    .line 51
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lretrofit2/Retrofit$Builder;

    iget-object v0, p0, Lcom/jess/arms/b/b/k;->d:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lokhttp3/OkHttpClient;

    iget-object v0, p0, Lcom/jess/arms/b/b/k;->e:Ljavax/inject/Provider;

    .line 53
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lokhttp3/HttpUrl;

    iget-object v0, p0, Lcom/jess/arms/b/b/k;->f:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/gson/e;

    .line 48
    invoke-static/range {v1 .. v6}, Lcom/jess/arms/b/b/f;->a(Landroid/app/Application;Lcom/jess/arms/b/b/f$c;Lretrofit2/Retrofit$Builder;Lokhttp3/OkHttpClient;Lokhttp3/HttpUrl;Lcom/google/gson/e;)Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 47
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/jess/arms/b/b/k;->a()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method
