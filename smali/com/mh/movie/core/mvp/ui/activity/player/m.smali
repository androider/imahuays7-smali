.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/player/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;


# static fields
.field static final a:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/m;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/m;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/player/m;->a:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;ILjava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b(Landroid/widget/TextView;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
