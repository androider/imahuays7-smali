.class public final Lcom/jess/arms/http/log/c;
.super Ljava/lang/Object;
.source "RequestInterceptor_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/jess/arms/http/log/RequestInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/log/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/log/RequestInterceptor$Level;",
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
            "Lcom/jess/arms/http/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/log/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/log/RequestInterceptor$Level;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/jess/arms/http/log/c;->a:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/jess/arms/http/log/c;->b:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/jess/arms/http/log/c;->c:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/jess/arms/http/log/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/log/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/http/log/RequestInterceptor$Level;",
            ">;)",
            "Lcom/jess/arms/http/log/c;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/jess/arms/http/log/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/jess/arms/http/log/c;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/jess/arms/http/log/RequestInterceptor;
    .locals 2

    .line 30
    new-instance v0, Lcom/jess/arms/http/log/RequestInterceptor;

    invoke-direct {v0}, Lcom/jess/arms/http/log/RequestInterceptor;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/jess/arms/http/log/c;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/http/b;

    invoke-static {v0, v1}, Lcom/jess/arms/http/log/d;->a(Lcom/jess/arms/http/log/RequestInterceptor;Lcom/jess/arms/http/b;)V

    .line 32
    iget-object v1, p0, Lcom/jess/arms/http/log/c;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/http/log/b;

    invoke-static {v0, v1}, Lcom/jess/arms/http/log/d;->a(Lcom/jess/arms/http/log/RequestInterceptor;Lcom/jess/arms/http/log/b;)V

    .line 33
    iget-object v1, p0, Lcom/jess/arms/http/log/c;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/http/log/RequestInterceptor$Level;

    invoke-static {v0, v1}, Lcom/jess/arms/http/log/d;->a(Lcom/jess/arms/http/log/RequestInterceptor;Lcom/jess/arms/http/log/RequestInterceptor$Level;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/jess/arms/http/log/c;->a()Lcom/jess/arms/http/log/RequestInterceptor;

    move-result-object v0

    return-object v0
.end method
