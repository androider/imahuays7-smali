.class Lorg/seamless/swing/logging/LogController$3;
.super Ljava/lang/Object;
.source "LogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/swing/logging/LogController;->pushMessage(Lorg/seamless/swing/logging/LogMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/swing/logging/LogController;

.field final synthetic val$message:Lorg/seamless/swing/logging/LogMessage;


# direct methods
.method constructor <init>(Lorg/seamless/swing/logging/LogController;Lorg/seamless/swing/logging/LogMessage;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lorg/seamless/swing/logging/LogController$3;->this$0:Lorg/seamless/swing/logging/LogController;

    iput-object p2, p0, Lorg/seamless/swing/logging/LogController$3;->val$message:Lorg/seamless/swing/logging/LogMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 167
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$3;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {v0}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    move-result-object v0

    iget-object v1, p0, Lorg/seamless/swing/logging/LogController$3;->val$message:Lorg/seamless/swing/logging/LogMessage;

    invoke-virtual {v0, v1}, Lorg/seamless/swing/logging/LogTableModel;->pushMessage(Lorg/seamless/swing/logging/LogMessage;)V

    .line 170
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$3;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {v0}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogTableModel;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$3;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {v0}, Lorg/seamless/swing/logging/LogController;->access$000(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JTable;

    move-result-object v0

    iget-object v1, p0, Lorg/seamless/swing/logging/LogController$3;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {v1}, Lorg/seamless/swing/logging/LogController;->access$000(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JTable;

    move-result-object v1

    iget-object v2, p0, Lorg/seamless/swing/logging/LogController$3;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {v2}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    move-result-object v2

    invoke-virtual {v2}, Lorg/seamless/swing/logging/LogTableModel;->getRowCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljavax/swing/JTable;->getCellRect(IIZ)Ljava/awt/Rectangle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->scrollRectToVisible(Ljava/awt/Rectangle;)V

    :cond_0
    return-void
.end method
