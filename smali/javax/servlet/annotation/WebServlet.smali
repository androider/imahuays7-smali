.class public interface abstract annotation Ljavax/servlet/annotation/WebServlet;
.super Ljava/lang/Object;
.source "WebServlet.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljavax/servlet/annotation/WebServlet;
        asyncSupported = false
        description = ""
        displayName = ""
        initParams = {}
        largeIcon = ""
        loadOnStartup = -0x1
        name = ""
        smallIcon = ""
        urlPatterns = {}
        value = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract asyncSupported()Z
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract displayName()Ljava/lang/String;
.end method

.method public abstract initParams()[Ljavax/servlet/annotation/WebInitParam;
.end method

.method public abstract largeIcon()Ljava/lang/String;
.end method

.method public abstract loadOnStartup()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract smallIcon()Ljava/lang/String;
.end method

.method public abstract urlPatterns()[Ljava/lang/String;
.end method

.method public abstract value()[Ljava/lang/String;
.end method
