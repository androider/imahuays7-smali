.class final Lcom/flurry/sdk/at$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/cw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/cw<",
        "Lcom/flurry/sdk/bv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/at;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/at;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/flurry/sdk/at$5;->a:Lcom/flurry/sdk/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/cv;)V
    .locals 0

    .line 1137
    iget-object p1, p0, Lcom/flurry/sdk/at$5;->a:Lcom/flurry/sdk/at;

    invoke-static {p1}, Lcom/flurry/sdk/at;->a(Lcom/flurry/sdk/at;)V

    return-void
.end method
