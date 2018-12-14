.class Lorg/seamless/swing/logging/LogController$5;
.super Ljava/lang/Object;
.source "LogController.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/swing/logging/LogController;->initializeToolBar(Lorg/seamless/swing/logging/LogController$Expiration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/swing/logging/LogController;


# direct methods
.method constructor <init>(Lorg/seamless/swing/logging/LogController;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lorg/seamless/swing/logging/LogController$5;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 0

    .line 215
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$5;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogTableModel;->clearMessages()V

    return-void
.end method
