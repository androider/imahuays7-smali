.class Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$1;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->startPlay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveFullBtn()V

    return-void
.end method
