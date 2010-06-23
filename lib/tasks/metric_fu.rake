require 'metric_fu'

MetricFu::Configuration.run do |config|
  config.metrics  = [:churn, :saikuro, :stats, :flog, :flay, :reek, :roodi, :rcov, :rails_best_practices]
  config.graphs   = [:flog, :flay, :reek, :roodi, :rcov, :stats, :rails_best_practices]
  config.flay     = { :dirs_to_flay => ['app', 'lib', 'spec'], :minimum_score => 10, :filetypes => ['rb'] } 
  config.flog     = { :dirs_to_flog => ['app', 'lib']  }
  config.reek     = { :dirs_to_reek => ['app', 'lib']  }
  config.roodi    = { :dirs_to_roodi => ['app', 'lib'] }
  config.saikuro  = { :output_directory => 'tmp/metric_fu/scratch/saikuro', 
                      :input_directory => ['app', 'lib'],
                      :cyclo => "",
                      :filter_cyclo => "0",
                      :warn_cyclo => "5",
                      :error_cyclo => "7",
                      :formater => "text"
                    }
  config.churn    = { :start_date => "1 year ago", :minimum_churn_count => 10 }
  config.rcov     = { :environment => 'test',
                      :test_files => ['test/**/*_test.rb', 'spec/**/*_spec.rb'],
                      :rcov_opts => ["--sort coverage", 
                                     "--no-html", 
                                     "--text-coverage",
                                     "--no-color",
                                     "--profile",
                                     "--rails",
                                     "-Itest:spec",
                                     "--exclude /gems/,/Library/,spec"],
                       :external => nil
                    }
  config.graph_engine = :bluff
end