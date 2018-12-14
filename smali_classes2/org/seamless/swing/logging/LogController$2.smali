.class Lorg/seamless/swing/logging/LogController$2;
.super Ljava/lang/Object;
.source "LogController.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/swing/logging/LogController;-><init>(Lorg/seamless/swing/Controller;Lorg/seamless/swing/logging/LogController$Expiration;Ljava/util/List;)V
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

    .line 125
    iput-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 3

    .line 128
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {v0}, Lorg/seamless/swing/logging/LogController;->access$000(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JTable;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 131
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$000(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JTable;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/swing/JTable;->getSelectedRows()[I

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 133
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 137
    iget-object v1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {v1}, Lorg/seamless/swing/logging/LogController;->access$100(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 138
    iget-object v1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {v1}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    move-result-object v1

    aget p1, p1, v0

    invoke-virtual {v1, p1, v0}, Lorg/seamless/swing/logging/LogTableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/seamless/swing/logging/LogMessage;

    .line 139
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-virtual {v1}, Lorg/seamless/swing/logging/LogController;->getExpandMessageCharacterLimit()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 140
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$200(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljavax/swing/JButton;->setEnabled(Z)V

    goto :goto_1

    .line 142
    :cond_2
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$200(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/swing/JButton;->setEnabled(Z)V

    goto :goto_1

    .line 145
    :cond_3
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$100(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 146
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$200(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/swing/JButton;->setEnabled(Z)V

    goto :goto_1

    .line 134
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$100(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 135
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$200(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/swing/JButton;->setEnabled(Z)V

    :cond_5
    :goto_1
    return-void
.end method
