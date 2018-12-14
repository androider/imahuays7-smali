.class public final Lcom/jess/arms/http/imageloader/d;
.super Ljava/lang/Object;
.source "ImageLoader_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/jess/arms/http/imageloader/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/imageloader/a;",
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
            "Lcom/jess/arms/http/imageloader/a;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jess/arms/http/imageloader/d;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;)Lcom/jess/arms/http/imageloader/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/imageloader/a;",
            ">;)",
            "Lcom/jess/arms/http/imageloader/d;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/jess/arms/http/imageloader/d;

    invoke-direct {v0, p0}, Lcom/jess/arms/http/imageloader/d;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/jess/arms/http/imageloader/c;
    .locals 2

    .line 20
    new-instance v0, Lcom/jess/arms/http/imageloader/c;

    invoke-direct {v0}, Lcom/jess/arms/http/imageloader/c;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/jess/arms/http/imageloader/d;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/http/imageloader/a;

    invoke-static {v0, v1}, Lcom/jess/arms/http/imageloader/e;->a(Lcom/jess/arms/http/imageloader/c;Lcom/jess/arms/http/imageloader/a;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/d;->a()Lcom/jess/arms/http/imageloader/c;

    move-result-object v0

    return-object v0
.end method
