.class public interface abstract Lorg/seamless/swing/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Ljava/awt/event/WindowListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/awt/Container;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/awt/event/ActionListener;",
        "Ljava/awt/event/WindowListener;"
    }
.end annotation


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract failedActionExecute()V
.end method

.method public abstract finalActionExecute()V
.end method

.method public abstract fireEvent(Lorg/seamless/swing/Event;)V
.end method

.method public abstract fireEvent(Lorg/seamless/swing/Event;Z)V
.end method

.method public abstract fireEventGlobal(Lorg/seamless/swing/Event;)V
.end method

.method public abstract getParentController()Lorg/seamless/swing/Controller;
.end method

.method public abstract getSubControllers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/seamless/swing/Controller;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getView()Ljava/awt/Container;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract postActionExecute()V
.end method

.method public abstract preActionExecute()V
.end method

.method public abstract registerAction(Ljavax/swing/AbstractButton;Ljava/lang/String;Lorg/seamless/swing/DefaultAction;)V
.end method

.method public abstract registerAction(Ljavax/swing/AbstractButton;Lorg/seamless/swing/DefaultAction;)V
.end method

.method public abstract registerEventListener(Ljava/lang/Class;Lorg/seamless/swing/EventListener;)V
.end method
