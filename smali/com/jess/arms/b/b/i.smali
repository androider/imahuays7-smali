.class public final Lcom/jess/arms/b/b/i;
.super Ljava/lang/Object;
.source "ClientModule_ProvideClientFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lokhttp3/OkHttpClient;",
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
            "Lcom/jess/arms/b/b/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/b;",
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
            "Lcom/jess/arms/b/b/f$b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/Interceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/b;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/jess/arms/b/b/i;->a:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/jess/arms/b/b/i;->b:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/jess/arms/b/b/i;->c:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lcom/jess/arms/b/b/i;->d:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/jess/arms/b/b/i;->e:Ljavax/inject/Provider;

    .line 42
    iput-object p6, p0, Lcom/jess/arms/b/b/i;->f:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/jess/arms/b/b/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/b/b/f$b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/Interceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/b;",
            ">;)",
            "Lcom/jess/arms/b/b/i;"
        }
    .end annotation

    .line 65
    new-instance v7, Lcom/jess/arms/b/b/i;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/jess/arms/b/b/i;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method


# virtual methods
.method public a()Lokhttp3/OkHttpClient;
    .locals 7

    .line 47
    iget-object v0, p0, Lcom/jess/arms/b/b/i;->a:Ljavax/inject/Provider;

    .line 49
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    iget-object v0, p0, Lcom/jess/arms/b/b/i;->b:Ljavax/inject/Provider;

    .line 50
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/jess/arms/b/b/f$b;

    iget-object v0, p0, Lcom/jess/arms/b/b/i;->c:Ljavax/inject/Provider;

    .line 51
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lokhttp3/OkHttpClient$Builder;

    iget-object v0, p0, Lcom/jess/arms/b/b/i;->d:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lokhttp3/Interceptor;

    iget-object v0, p0, Lcom/jess/arms/b/b/i;->e:Ljavax/inject/Provider;

    .line 53
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    iget-object v0, p0, Lcom/jess/arms/b/b/i;->f:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/jess/arms/http/b;

    .line 48
    invoke-static/range {v1 .. v6}, Lcom/jess/arms/b/b/f;->a(Landroid/app/Application;Lcom/jess/arms/b/b/f$b;Lokhttp3/OkHttpClient$Builder;Lokhttp3/Interceptor;Ljava/util/List;Lcom/jess/arms/http/b;)Lokhttp3/OkHttpClient;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 47
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/jess/arms/b/b/i;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
