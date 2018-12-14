.class final Lcom/flurry/sdk/cf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/cf;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ea<",
        "Lcom/flurry/sdk/ce;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cf;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/flurry/sdk/cf$1;->a:Lcom/flurry/sdk/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/dx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/dx<",
            "Lcom/flurry/sdk/ce;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance p1, Lcom/flurry/sdk/ce$a;

    invoke-direct {p1}, Lcom/flurry/sdk/ce$a;-><init>()V

    return-object p1
.end method
