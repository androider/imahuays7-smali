.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/adapter/l$a;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/h;->a:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/h;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/h;->a:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/h;->b:I

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(ILcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;Ljava/lang/String;)V

    return-void
.end method
