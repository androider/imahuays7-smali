.class Lorg/seamless/swing/logging/LogController$9;
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

    .line 256
    iput-object p1, p0, Lorg/seamless/swing/logging/LogController$9;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 258
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/swing/JComboBox;

    .line 259
    invoke-virtual {p1}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/seamless/swing/logging/LogController$Expiration;

    .line 260
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$9;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {v0}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    move-result-object v0

    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogController$Expiration;->getSeconds()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/seamless/swing/logging/LogTableModel;->setMaxAgeSeconds(I)V

    return-void
.end method
