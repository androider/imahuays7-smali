.class public interface abstract Ljavax/servlet/ServletContext;
.super Ljava/lang/Object;
.source "ServletContext.java"


# static fields
.field public static final ORDERED_LIBS:Ljava/lang/String; = "javax.servlet.context.orderedLibs"

.field public static final TEMPDIR:Ljava/lang/String; = "javax.servlet.context.tempdir"


# virtual methods
.method public abstract addFilter(Ljava/lang/String;Ljava/lang/Class;)Ljavax/servlet/FilterRegistration$Dynamic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/servlet/Filter;",
            ">;)",
            "Ljavax/servlet/FilterRegistration$Dynamic;"
        }
    .end annotation
.end method

.method public abstract addFilter(Ljava/lang/String;Ljava/lang/String;)Ljavax/servlet/FilterRegistration$Dynamic;
.end method

.method public abstract addFilter(Ljava/lang/String;Ljavax/servlet/Filter;)Ljavax/servlet/FilterRegistration$Dynamic;
.end method

.method public abstract addListener(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addListener(Ljava/lang/String;)V
.end method

.method public abstract addListener(Ljava/util/EventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(TT;)V"
        }
    .end annotation
.end method

.method public abstract addServlet(Ljava/lang/String;Ljava/lang/Class;)Ljavax/servlet/ServletRegistration$Dynamic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/servlet/Servlet;",
            ">;)",
            "Ljavax/servlet/ServletRegistration$Dynamic;"
        }
    .end annotation
.end method

.method public abstract addServlet(Ljava/lang/String;Ljava/lang/String;)Ljavax/servlet/ServletRegistration$Dynamic;
.end method

.method public abstract addServlet(Ljava/lang/String;Ljavax/servlet/Servlet;)Ljavax/servlet/ServletRegistration$Dynamic;
.end method

.method public abstract createFilter(Ljava/lang/Class;)Ljavax/servlet/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Filter;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract createListener(Ljava/lang/Class;)Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract createServlet(Ljava/lang/Class;)Ljavax/servlet/Servlet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Servlet;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public varargs abstract declareRoles([Ljava/lang/String;)V
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAttributeNames()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract getContext(Ljava/lang/String;)Ljavax/servlet/ServletContext;
.end method

.method public abstract getContextPath()Ljava/lang/String;
.end method

.method public abstract getDefaultSessionTrackingModes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEffectiveMajorVersion()I
.end method

.method public abstract getEffectiveMinorVersion()I
.end method

.method public abstract getEffectiveSessionTrackingModes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFilterRegistration(Ljava/lang/String;)Ljavax/servlet/FilterRegistration;
.end method

.method public abstract getFilterRegistrations()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljavax/servlet/FilterRegistration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInitParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInitParameterNames()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJspConfigDescriptor()Ljavax/servlet/descriptor/JspConfigDescriptor;
.end method

.method public abstract getMajorVersion()I
.end method

.method public abstract getMimeType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMinorVersion()I
.end method

.method public abstract getNamedDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
.end method

.method public abstract getRealPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
.end method

.method public abstract getResource(Ljava/lang/String;)Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation
.end method

.method public abstract getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServerInfo()Ljava/lang/String;
.end method

.method public abstract getServlet(Ljava/lang/String;)Ljavax/servlet/Servlet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract getServletContextName()Ljava/lang/String;
.end method

.method public abstract getServletNames()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServletRegistration(Ljava/lang/String;)Ljavax/servlet/ServletRegistration;
.end method

.method public abstract getServletRegistrations()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljavax/servlet/ServletRegistration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServlets()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljavax/servlet/Servlet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;
.end method

.method public abstract log(Ljava/lang/Exception;Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setSessionTrackingModes(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;)V"
        }
    .end annotation
.end method
