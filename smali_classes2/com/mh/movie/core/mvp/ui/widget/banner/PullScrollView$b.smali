.class final enum Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;
.super Ljava/lang/Enum;
.source "PullScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

.field public static final enum b:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

.field public static final enum c:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

.field private static final synthetic d:[Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 66
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    .line 68
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    const-string v1, "DOWN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->b:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    .line 70
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    const-string v1, "NORMAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->c:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    const/4 v0, 0x3

    .line 64
    new-array v0, v0, [Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->b:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->c:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->d:[Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;
    .locals 1

    .line 64
    const-class v0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    return-object p0
.end method

.method public static values()[Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;
    .locals 1

    .line 64
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->d:[Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    invoke-virtual {v0}, [Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    return-object v0
.end method
