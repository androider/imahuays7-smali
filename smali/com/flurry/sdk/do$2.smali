.class final Lcom/flurry/sdk/do$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/cw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/cw<",
        "Lcom/flurry/sdk/by;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/do;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/do;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/flurry/sdk/do$2;->a:Lcom/flurry/sdk/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/cv;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/flurry/sdk/by;

    .line 1044
    iget-boolean p1, p1, Lcom/flurry/sdk/by;->a:Z

    if-eqz p1, :cond_0

    .line 1045
    iget-object p1, p0, Lcom/flurry/sdk/do$2;->a:Lcom/flurry/sdk/do;

    invoke-static {p1}, Lcom/flurry/sdk/do;->a(Lcom/flurry/sdk/do;)V

    :cond_0
    return-void
.end method
