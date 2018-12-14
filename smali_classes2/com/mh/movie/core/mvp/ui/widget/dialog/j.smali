.class final synthetic Lcom/mh/movie/core/mvp/ui/widget/dialog/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final a:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/j;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/j;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/j;->a:Landroid/view/View$OnClickListener;

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

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->b(Landroid/view/View;)V

    return-void
.end method
