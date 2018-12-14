.class final synthetic Lcom/mh/movie/core/mvp/ui/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final a:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/g;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/widget/g;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/g;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a(Landroid/view/View;)V

    return-void
.end method
