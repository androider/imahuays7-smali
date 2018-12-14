.class Lrx/a/a$1;
.super Ljava/lang/Object;
.source "MainThreadSubscription.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a/a;->unsubscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/a/a;


# direct methods
.method constructor <init>(Lrx/a/a;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lrx/a/a$1;->a:Lrx/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 76
    iget-object v0, p0, Lrx/a/a$1;->a:Lrx/a/a;

    invoke-virtual {v0}, Lrx/a/a;->a()V

    return-void
.end method
