.class final Lcom/flurry/sdk/az$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/az;->b(Lcom/flurry/sdk/ba;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/az;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/az;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/flurry/sdk/az$4;->a:Lcom/flurry/sdk/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/flurry/sdk/az$4;->a:Lcom/flurry/sdk/az;

    invoke-static {v0}, Lcom/flurry/sdk/az;->a(Lcom/flurry/sdk/az;)V

    return-void
.end method
