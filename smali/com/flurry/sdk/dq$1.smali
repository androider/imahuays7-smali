.class final Lcom/flurry/sdk/dq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/dq;->b(Ljava/lang/String;)Lcom/flurry/sdk/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ea<",
        "Lcom/flurry/sdk/dq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 129
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
            "Lcom/flurry/sdk/dq;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/flurry/sdk/dq$a;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/dq$a;-><init>(I)V

    return-object v0
.end method
