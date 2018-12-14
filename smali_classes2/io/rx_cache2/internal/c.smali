.class public final Lio/rx_cache2/internal/c;
.super Ljava/lang/Object;
.source "Disk_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lio/rx_cache2/internal/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/victoralbertos/jolyglot/JolyglotGenerics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/a/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/victoralbertos/jolyglot/JolyglotGenerics;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/rx_cache2/internal/c;->a:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lio/rx_cache2/internal/c;->b:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lio/rx_cache2/internal/c;->c:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lio/rx_cache2/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/a/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/victoralbertos/jolyglot/JolyglotGenerics;",
            ">;)",
            "Lio/rx_cache2/internal/c;"
        }
    .end annotation

    .line 40
    new-instance v0, Lio/rx_cache2/internal/c;

    invoke-direct {v0, p0, p1, p2}, Lio/rx_cache2/internal/c;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public a()Lio/rx_cache2/internal/b;
    .locals 4

    .line 32
    new-instance v0, Lio/rx_cache2/internal/b;

    iget-object v1, p0, Lio/rx_cache2/internal/c;->a:Ljavax/inject/Provider;

    .line 33
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lio/rx_cache2/internal/c;->b:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rx_cache2/internal/a/c;

    iget-object v3, p0, Lio/rx_cache2/internal/c;->c:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-direct {v0, v1, v2, v3}, Lio/rx_cache2/internal/b;-><init>(Ljava/io/File;Lio/rx_cache2/internal/a/c;Lio/victoralbertos/jolyglot/JolyglotGenerics;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lio/rx_cache2/internal/c;->a()Lio/rx_cache2/internal/b;

    move-result-object v0

    return-object v0
.end method
