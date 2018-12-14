.class final synthetic Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final $instance:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$$Lambda$3;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$$Lambda$3;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$$Lambda$3;->$instance:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->lambda$showPmsExternalStorage$3$PermissionUtils(Landroid/content/DialogInterface;I)V

    return-void
.end method
