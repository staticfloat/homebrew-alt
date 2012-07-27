require 'formula'

class Matplotlib < Formula
  homepage 'http://matplotlib.sf.net'
  head 'git://github.com/matplotlib/matplotlib.git'

  depends_on 'python'
  depends_on 'numpy' => :python
  #depends_on 'homebrew/versions/libpng12'
  

  def install
    system "python setup.py build"
    system "python setup.py install"
  end

  def test
    system "python -c 'import matplotlib'"
  end

  def caveats; <<-EOS.undent
    To uninstall matplotlib, use 'pip uninstall matplotlib'
    EOS
  end
end
