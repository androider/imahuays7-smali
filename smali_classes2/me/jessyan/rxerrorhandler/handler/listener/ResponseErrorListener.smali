.class public interface abstract Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;
.super Ljava/lang/Object;
.source "ResponseErrorListener.java"


# static fields
.field public static final EMPTY:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener$1;

    invoke-direct {v0}, Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener$1;-><init>()V

    sput-object v0, Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;->EMPTY:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    return-void
.end method


# virtual methods
.method public abstract handleResponseError(Landroid/content/Context;Ljava/lang/Throwable;)V
.end method
