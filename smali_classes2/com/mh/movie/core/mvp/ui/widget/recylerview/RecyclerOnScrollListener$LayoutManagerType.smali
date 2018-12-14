.class public final enum Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;
.super Ljava/lang/Enum;
.source "RecyclerOnScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutManagerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GridLayout:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

.field public static final enum LinearLayout:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

.field public static final enum StaggeredGridLayout:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

.field private static final synthetic a:[Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 107
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    const-string v1, "LinearLayout"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;->LinearLayout:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    .line 108
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    const-string v1, "StaggeredGridLayout"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;->StaggeredGridLayout:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    .line 109
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    const-string v1, "GridLayout"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;->GridLayout:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    const/4 v0, 0x3

    .line 106
    new-array v0, v0, [Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;->LinearLayout:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;->StaggeredGridLayout:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;->GridLayout:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;->a:[Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;
    .locals 1

    .line 106
    const-class v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    return-object p0
.end method

.method public static values()[Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;
    .locals 1

    .line 106
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;->a:[Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    invoke-virtual {v0}, [Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    return-object v0
.end method
