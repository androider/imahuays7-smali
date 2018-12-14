.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/az;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/az;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method
