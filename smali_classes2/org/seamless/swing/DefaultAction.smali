.class public abstract Lorg/seamless/swing/DefaultAction;
.super Ljavax/swing/AbstractAction;
.source "DefaultAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljavax/swing/AbstractAction;-><init>()V

    return-void
.end method


# virtual methods
.method public executeInController(Lorg/seamless/swing/Controller;Ljava/awt/event/ActionEvent;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p2}, Lorg/seamless/swing/DefaultAction;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    return-void
.end method
