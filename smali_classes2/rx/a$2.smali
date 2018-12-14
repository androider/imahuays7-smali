.class Lrx/a$2;
.super Lrx/e;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Lrx/b/b;)Lrx/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/b/b;

.field final synthetic b:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Lrx/b/b;)V
    .locals 0

    .line 7914
    iput-object p1, p0, Lrx/a$2;->b:Lrx/a;

    iput-object p2, p0, Lrx/a$2;->a:Lrx/b/b;

    invoke-direct {p0}, Lrx/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 7923
    new-instance v0, Lrx/exceptions/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 7928
    iget-object v0, p0, Lrx/a$2;->a:Lrx/b/b;

    invoke-interface {v0, p1}, Lrx/b/b;->a(Ljava/lang/Object;)V

    return-void
.end method
