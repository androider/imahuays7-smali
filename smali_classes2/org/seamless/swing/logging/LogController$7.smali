.class Lorg/seamless/swing/logging/LogController$7;
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

    .line 234
    iput-object p1, p0, Lorg/seamless/swing/logging/LogController$7;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    .line 236
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$7;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogController;->getSelectedMessages()Ljava/util/List;

    move-result-object p1

    .line 237
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$7;->this$0:Lorg/seamless/swing/logging/LogController;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/seamless/swing/logging/LogMessage;

    invoke-virtual {v0, p1}, Lorg/seamless/swing/logging/LogController;->expand(Lorg/seamless/swing/logging/LogMessage;)V

    return-void
.end method
