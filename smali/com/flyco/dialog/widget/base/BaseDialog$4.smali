.class Lcom/flyco/dialog/widget/base/BaseDialog$4;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyco/dialog/widget/base/BaseDialog;->delayDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyco/dialog/widget/base/BaseDialog;


# direct methods
.method constructor <init>(Lcom/flyco/dialog/widget/base/BaseDialog;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog$4;->this$0:Lcom/flyco/dialog/widget/base/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog$4;->this$0:Lcom/flyco/dialog/widget/base/BaseDialog;

    invoke-virtual {v0}, Lcom/flyco/dialog/widget/base/BaseDialog;->dismiss()V

    return-void
.end method
