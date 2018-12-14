.class public final Lio/rx_cache2/internal/a/d;
.super Ljava/lang/Object;
.source "FileEncryptor_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lio/rx_cache2/internal/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/a/b;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/rx_cache2/internal/a/d;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;)Lio/rx_cache2/internal/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/a/b;",
            ">;)",
            "Lio/rx_cache2/internal/a/d;"
        }
    .end annotation

    .line 24
    new-instance v0, Lio/rx_cache2/internal/a/d;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/a/d;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public a()Lio/rx_cache2/internal/a/c;
    .locals 2

    .line 20
    new-instance v0, Lio/rx_cache2/internal/a/c;

    iget-object v1, p0, Lio/rx_cache2/internal/a/d;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rx_cache2/internal/a/b;

    invoke-direct {v0, v1}, Lio/rx_cache2/internal/a/c;-><init>(Lio/rx_cache2/internal/a/b;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lio/rx_cache2/internal/a/d;->a()Lio/rx_cache2/internal/a/c;

    move-result-object v0

    return-object v0
.end method
