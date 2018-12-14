.class final Lcom/flurry/sdk/at$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/at;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ea<",
        "Ljava/util/List<",
        "Lcom/flurry/sdk/ba;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/at;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/at;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/flurry/sdk/at$8;->a:Lcom/flurry/sdk/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/dx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/dx<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ba;",
            ">;>;"
        }
    .end annotation

    .line 191
    new-instance p1, Lcom/flurry/sdk/dw;

    new-instance v0, Lcom/flurry/sdk/ba$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ba$a;-><init>()V

    invoke-direct {p1, v0}, Lcom/flurry/sdk/dw;-><init>(Lcom/flurry/sdk/dx;)V

    return-object p1
.end method
