.class final synthetic Lcom/mh/movie/core/mvp/ui/widget/dialog/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/r;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q;

    return-void
.end method


# virtual methods
.method public onRequestSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/r;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c()V

    return-void
.end method
