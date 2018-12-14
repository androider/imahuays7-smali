.class public Lcom/facebook/common/internal/k;
.super Ljava/lang/Object;
.source "Suppliers.java"


# static fields
.field public static final a:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/facebook/common/internal/k$2;

    invoke-direct {v0}, Lcom/facebook/common/internal/k$2;-><init>()V

    sput-object v0, Lcom/facebook/common/internal/k;->a:Lcom/facebook/common/internal/j;

    .line 36
    new-instance v0, Lcom/facebook/common/internal/k$3;

    invoke-direct {v0}, Lcom/facebook/common/internal/k$3;-><init>()V

    sput-object v0, Lcom/facebook/common/internal/k;->b:Lcom/facebook/common/internal/j;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/facebook/common/internal/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/facebook/common/internal/j<",
            "TT;>;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/facebook/common/internal/k$1;

    invoke-direct {v0, p0}, Lcom/facebook/common/internal/k$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
