.class final synthetic Lcom/mh/movie/core/mvp/ui/holder/player/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/holder/player/AirScreenDeviceHolder;

.field private final b:Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/holder/player/AirScreenDeviceHolder;Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/player/a;->a:Lcom/mh/movie/core/mvp/ui/holder/player/AirScreenDeviceHolder;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/player/a;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/player/a;->a:Lcom/mh/movie/core/mvp/ui/holder/player/AirScreenDeviceHolder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/holder/player/a;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/holder/player/AirScreenDeviceHolder;->a(Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;Landroid/view/View;)V

    return-void
.end method
