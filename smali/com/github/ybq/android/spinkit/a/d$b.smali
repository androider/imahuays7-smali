.class Lcom/github/ybq/android/spinkit/a/d$b;
.super Ljava/lang/Object;
.source "SpriteAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field b:[F

.field c:Landroid/util/Property;

.field d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/github/ybq/android/spinkit/a/d;


# direct methods
.method public constructor <init>(Lcom/github/ybq/android/spinkit/a/d;[FLandroid/util/Property;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroid/util/Property;",
            "[TT;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/a/d$b;->e:Lcom/github/ybq/android/spinkit/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/github/ybq/android/spinkit/a/d$b;->b:[F

    .line 36
    iput-object p3, p0, Lcom/github/ybq/android/spinkit/a/d$b;->c:Landroid/util/Property;

    .line 37
    iput-object p4, p0, Lcom/github/ybq/android/spinkit/a/d$b;->d:[Ljava/lang/Object;

    return-void
.end method
